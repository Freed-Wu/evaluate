# evaluate
A backup of my class work.

## Dependent ##

1. [mysql](https://github.com/mysql/mysql-server).

## Usage ##

1. Put data into `csv`

**Note**: Data type is `csv` not `tsv`, `xls`, `xlsx`, just because my
convenience. If not csv, `load date
infile'/home/wzy/Documents/evaluate/csv/*.csv'` in the code should be modify.

*路径名应该改成相对路径的，别人电脑上怎么会有`wzy`这个文件夹呢……*

```
.
├── 2020_2104.tsv
├── csv
│   ├── 2020
│   │   ├── 操卡检查总公示（第5周-第18周）.csv
│   │   ├── 查留寝结果总公示（第6、8、11周）.csv
│   │   ├── 活动统计总公示（8月-1月）.csv
│   │   └── 卫生检查总公示（第5周-第17周）.csv
│   ├── 2020_development
│   │   ├── 91XXXXXXXXXX.csv
│   │   └── ...
│   ├── 2020_science
│   │   ├── 91XXXXXXXXXX.csv
│   │   └── ...
│   ├── dormitory10.csv
│   ├── dormitory11.csv
│   ├── dormitory12.csv
│   └── student.csv
├── LICENSE
├── main.mysql
└── README.md
```

`csv/2020/*.csv` come from website of my grade.
The origin file is `xlsx`.
I installed `gnumetric` to convert `xlsx` to `csv`.

```{.zsh}
ssconvert -E cp936 csv/2020/*.xlsx csv/2020/*.csv
```

`cp936` is the English name of `GB2312`.

`csv/2020_*/*.csv` come from other people. The every line of file is

```{.csv}
student_id,award_name,aword_grade,grade,score
```

E.g.

```{.csv}
91XXXXXXXXXX,纪录片观影活动,院级,第一名,6
```

**Note**: if data format is wrong, like

```{.csv}
91XXXXXXXXXX,纪录片观影活动,院级,6,第一名
```

or

```{.csv}
91XXXXXXXXXX,纪录片观影活动,院级,6
```

`mysql` will return error like `incorrect
column`

2. run `main.mysql` in `mysql`:

```{.mysql}
source main.mysql;
```

If succeeded, you will get result `score.tsv`. Data type is `tsv` by default.

```{.mysql}
system sudo chown wzy:wzy /var/lib/mysql/evaluate/score.tsv;
system sudo mv /var/lib/mysql/evaluate/score.tsv .;
```

**Note**: `main.mysql` 最后这2句用了unix shell, 在没有安装 unix 兼容层的
Windows 上可能无法运行。最好应该判断一下 OS 类型后对 Windows 改用
cmd 。 Windows 用户应该改为：

```{.mysql}
system sudo move 'C:\Program Files\MySQL\MySQL Server 5.7\lib\mysql\evaluate\score.tsv' .;
```

或者直接查看结果：

```{.mysql}
select * from score;
```

## Q & A ##

Q: Why?
A: I know why you are strange for my behavior.
Why not handle data manually? Is it easier, isn't it?
But I must do the same work every term. I have tolerated it too much.
For me, it is very easy to get confused by some much data.
So I try to use computer to finish my work automatically.

Q: Support for `cmd`?
A: Welcome to pull request.

See more on [issues](https://github.com/Freed-Wu/evaluate/issues)

## Todo ##

1. Relative path.

## Thanks ##

1. [SkTsKtSkT1](https://github.com/SkTsKtSkT1) encourage me to use mysql to
   finish it.


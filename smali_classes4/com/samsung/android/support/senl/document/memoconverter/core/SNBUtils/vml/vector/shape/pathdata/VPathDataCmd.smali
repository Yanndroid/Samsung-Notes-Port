.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCmd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCmd$Alias;
    }
.end annotation


# static fields
.field public static final AngleEllipse:Ljava/lang/String; = "al"

.field public static final AngleEllipseTo:Ljava/lang/String; = "ae"

.field public static final Arc:Ljava/lang/String; = "ar"

.field public static final ArcTo:Ljava/lang/String; = "at"

.field public static final AutoCurve:Ljava/lang/String; = "hb"

.field public static final AutoLine:Ljava/lang/String; = "ha"

.field public static final ClockWiseArc:Ljava/lang/String; = "wr"

.field public static final ClockWiseArcTo:Ljava/lang/String; = "wa"

.field public static final Close:Ljava/lang/String; = "x"

.field public static final CornerCurve:Ljava/lang/String; = "hd"

.field public static final CornerLine:Ljava/lang/String; = "hc"

.field public static final CurveTo:Ljava/lang/String; = "c"

.field public static final EllipticalQaudrantX:Ljava/lang/String; = "qx"

.field public static final EllipticalQaudrantY:Ljava/lang/String; = "qy"

.field public static final End:Ljava/lang/String; = "e"

.field public static final FreeForm:Ljava/lang/String; = "hi"

.field public static final LineTo:Ljava/lang/String; = "l"

.field public static final MoveTo:Ljava/lang/String; = "m"

.field public static final NoFill:Ljava/lang/String; = "nf"

.field public static final NoStroke:Ljava/lang/String; = "ns"

.field public static final Quadraticbezier:Ljava/lang/String; = "qb"

.field public static final RCurveTo:Ljava/lang/String; = "v"

.field public static final RLineTo:Ljava/lang/String; = "r"

.field public static final RMoveTo:Ljava/lang/String; = "t"

.field public static final SmoothCurve:Ljava/lang/String; = "hf"

.field public static final SmoothLine:Ljava/lang/String; = "he"

.field public static final SymmetricCurve:Ljava/lang/String; = "hg"

.field public static final SymmetricLine:Ljava/lang/String; = "hg"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makePathInfoList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "\\p{Space}"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "hi"

    const-string v4, "#028;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "hg"

    const-string v4, "#027;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "#026;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "hf"

    const-string v4, "#025;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "he"

    const-string v4, "#024;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "hd"

    const-string v4, "#023;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "hc"

    const-string v4, "#022;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "hb"

    const-string v4, "#021;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "ha"

    const-string v4, "#020;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "qb"

    const-string v4, "#019;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "qy"

    const-string v4, "#018;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "qx"

    const-string v4, "#017;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "wr"

    const-string v4, "#016;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "wa"

    const-string v4, "#015;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "ar"

    const-string v4, "#014;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "at"

    const-string v4, "#013;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "al"

    const-string v4, "#012;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "ae"

    const-string v4, "#011;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "ns"

    const-string v4, "#010;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "nf"

    const-string v4, "#009;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "e"

    const-string v4, "#008;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "x"

    const-string v4, "#007;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "v"

    const-string v4, "#006;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "r"

    const-string v4, "#005;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "t"

    const-string v4, "#004;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "c"

    const-string v4, "#003;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "l"

    const-string v4, "#002;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "m"

    const-string v4, "#001;"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "#[0-9][0-9][0-9][^#]*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->setDefaultMember()V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->setPathCmd(Ljava/lang/String;)V

    aget-object v5, v3, v4

    const-string v6, "#019"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;->setList(Ljava/lang/String;)Z

    move-result v3

    :goto_2
    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->setPathData(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;)V

    move v4, v3

    goto/16 :goto_4

    :cond_4
    aget-object v5, v3, v4

    const-string v6, "#018"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantY;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantY;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantY;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantY;->setList(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    :cond_5
    aget-object v5, v3, v4

    const-string v6, "#017"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantX;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantX;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantX;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantX;->setList(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    :cond_6
    aget-object v5, v3, v4

    const-string v6, "#016"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc;->setList(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    :cond_7
    aget-object v5, v3, v4

    const-string v6, "#015"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo;->setList(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    :cond_8
    aget-object v5, v3, v4

    const-string v6, "#014"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_9

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc;->setList(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_2

    :cond_9
    aget-object v5, v3, v4

    const-string v6, "#013"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_a

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo;->setList(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_2

    :cond_a
    aget-object v5, v3, v4

    const-string v6, "#012"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_b

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;->setList(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_2

    :cond_b
    aget-object v5, v3, v4

    const-string v6, "#011"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_c

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo;->setList(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_2

    :cond_c
    aget-object v5, v3, v4

    const-string v6, "#010"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_d

    new-instance v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoStroke;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoStroke;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoStroke;->setDefaultMember()V

    :goto_3
    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->setPathData(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;)V

    move v4, v1

    goto/16 :goto_4

    :cond_d
    aget-object v5, v3, v4

    const-string v6, "#009"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_e

    new-instance v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoFill;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoFill;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoFill;->setDefaultMember()V

    goto :goto_3

    :cond_e
    aget-object v5, v3, v4

    const-string v6, "#008"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_f

    new-instance v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEnd;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEnd;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEnd;->setDefaultMember()V

    goto :goto_3

    :cond_f
    aget-object v5, v3, v4

    const-string v6, "#007"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_10

    new-instance v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClose;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClose;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClose;->setDefaultMember()V

    goto :goto_3

    :cond_10
    aget-object v5, v3, v4

    const-string v6, "#006"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_11

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo;->setList(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_2

    :cond_11
    aget-object v5, v3, v4

    const-string v6, "#005"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_12

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRLineTo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRLineTo;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRLineTo;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRLineTo;->setList(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_2

    :cond_12
    aget-object v5, v3, v4

    const-string v6, "#004"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_13

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRMoveTo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRMoveTo;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRMoveTo;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRMoveTo;->setList(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_2

    :cond_13
    aget-object v5, v3, v4

    const-string v6, "#003"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_14

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->setList(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_2

    :cond_14
    aget-object v5, v3, v4

    const-string v6, "#002"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_15

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;->setList(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_2

    :cond_15
    aget-object v5, v3, v4

    const-string v6, "#001"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_16

    new-instance v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;->setDefaultMember()V

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;->setList(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_2

    :cond_16
    :goto_4
    if-eqz v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_17
    return-object v0

    :cond_18
    :goto_5
    const/4 p0, 0x0

    return-object p0
.end method

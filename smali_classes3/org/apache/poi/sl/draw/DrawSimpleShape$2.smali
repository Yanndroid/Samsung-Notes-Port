.class synthetic Lorg/apache/poi/sl/draw/DrawSimpleShape$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/DrawSimpleShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->values()[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/sl/draw/DrawSimpleShape$2;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    :try_start_0
    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->OVAL:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/poi/sl/draw/DrawSimpleShape$2;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->STEALTH:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/apache/poi/sl/draw/DrawSimpleShape$2;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ARROW:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/apache/poi/sl/draw/DrawSimpleShape$2;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->TRIANGLE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

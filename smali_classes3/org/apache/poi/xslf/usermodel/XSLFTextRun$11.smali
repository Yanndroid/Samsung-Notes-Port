.class synthetic Lorg/apache/poi/xslf/usermodel/XSLFTextRun$11;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

.field public static final synthetic $SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->values()[Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$11;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$11;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    sget-object v3, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->EAST_ASIAN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$11;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    sget-object v3, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->COMPLEX_SCRIPT:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$11;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    sget-object v3, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;->values()[Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$11;->$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap:[I

    :try_start_4
    sget-object v3, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;->ALL:Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$11;->$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap:[I

    sget-object v2, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;->SMALL:Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

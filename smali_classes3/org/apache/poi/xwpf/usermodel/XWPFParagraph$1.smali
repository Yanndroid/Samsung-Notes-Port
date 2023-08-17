.class synthetic Lorg/apache/poi/xwpf/usermodel/XWPFParagraph$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$apache$poi$xwpf$usermodel$LineSpacingRule:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->values()[Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$LineSpacingRule:[I

    :try_start_0
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->AUTO:Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

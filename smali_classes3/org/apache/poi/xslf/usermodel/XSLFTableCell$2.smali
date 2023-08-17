.class synthetic Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

.field public static final synthetic $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->values()[Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->HORIZONTAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    sget-object v3, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    sget-object v4, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL_270:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    sget-object v5, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->STACKED:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->values()[Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    :try_start_4
    sget-object v5, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->bottom:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    sget-object v4, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->left:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    sget-object v1, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->top:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    sget-object v1, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->right:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

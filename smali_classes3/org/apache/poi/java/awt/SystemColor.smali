.class public final Lorg/apache/poi/java/awt/SystemColor;
.super Lorg/apache/poi/java/awt/Color;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTIVE_CAPTION:I = 0x1

.field public static final ACTIVE_CAPTION_BORDER:I = 0x3

.field public static final ACTIVE_CAPTION_TEXT:I = 0x2

.field public static final CONTROL:I = 0x11

.field public static final CONTROL_DK_SHADOW:I = 0x16

.field public static final CONTROL_HIGHLIGHT:I = 0x13

.field public static final CONTROL_LT_HIGHLIGHT:I = 0x14

.field public static final CONTROL_SHADOW:I = 0x15

.field public static final CONTROL_TEXT:I = 0x12

.field public static final DESKTOP:I = 0x0

.field public static final INACTIVE_CAPTION:I = 0x4

.field public static final INACTIVE_CAPTION_BORDER:I = 0x6

.field public static final INACTIVE_CAPTION_TEXT:I = 0x5

.field public static final INFO:I = 0x18

.field public static final INFO_TEXT:I = 0x19

.field public static final MENU:I = 0xa

.field public static final MENU_TEXT:I = 0xb

.field public static final NUM_COLORS:I = 0x1a

.field public static final SCROLLBAR:I = 0x17

.field public static final TEXT:I = 0xc

.field public static final TEXT_HIGHLIGHT:I = 0xe

.field public static final TEXT_HIGHLIGHT_TEXT:I = 0xf

.field public static final TEXT_INACTIVE_TEXT:I = 0x10

.field public static final TEXT_TEXT:I = 0xd

.field public static final WINDOW:I = 0x7

.field public static final WINDOW_BORDER:I = 0x8

.field public static final WINDOW_TEXT:I = 0x9

.field public static final activeCaption:Lorg/apache/poi/java/awt/SystemColor;

.field public static final activeCaptionBorder:Lorg/apache/poi/java/awt/SystemColor;

.field public static final activeCaptionText:Lorg/apache/poi/java/awt/SystemColor;

.field public static final control:Lorg/apache/poi/java/awt/SystemColor;

.field public static final controlDkShadow:Lorg/apache/poi/java/awt/SystemColor;

.field public static final controlHighlight:Lorg/apache/poi/java/awt/SystemColor;

.field public static final controlLtHighlight:Lorg/apache/poi/java/awt/SystemColor;

.field public static final controlShadow:Lorg/apache/poi/java/awt/SystemColor;

.field public static final controlText:Lorg/apache/poi/java/awt/SystemColor;

.field public static final desktop:Lorg/apache/poi/java/awt/SystemColor;

.field public static final inactiveCaption:Lorg/apache/poi/java/awt/SystemColor;

.field public static final inactiveCaptionBorder:Lorg/apache/poi/java/awt/SystemColor;

.field public static final inactiveCaptionText:Lorg/apache/poi/java/awt/SystemColor;

.field public static final info:Lorg/apache/poi/java/awt/SystemColor;

.field public static final infoText:Lorg/apache/poi/java/awt/SystemColor;

.field public static final menu:Lorg/apache/poi/java/awt/SystemColor;

.field public static final menuText:Lorg/apache/poi/java/awt/SystemColor;

.field public static final scrollbar:Lorg/apache/poi/java/awt/SystemColor;

.field private static final serialVersionUID:J = 0x3e7e60742ebe9388L

.field private static systemColorObjects:[Lorg/apache/poi/java/awt/SystemColor;

.field private static systemColors:[I

.field public static final text:Lorg/apache/poi/java/awt/SystemColor;

.field public static final textHighlight:Lorg/apache/poi/java/awt/SystemColor;

.field public static final textHighlightText:Lorg/apache/poi/java/awt/SystemColor;

.field public static final textInactiveText:Lorg/apache/poi/java/awt/SystemColor;

.field public static final textText:Lorg/apache/poi/java/awt/SystemColor;

.field public static final window:Lorg/apache/poi/java/awt/SystemColor;

.field public static final windowBorder:Lorg/apache/poi/java/awt/SystemColor;

.field public static final windowText:Lorg/apache/poi/java/awt/SystemColor;


# instance fields
.field private transient index:I


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    const/16 v0, 0x1a

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/java/awt/SystemColor;->systemColors:[I

    new-instance v1, Lorg/apache/poi/java/awt/SystemColor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v1, Lorg/apache/poi/java/awt/SystemColor;->desktop:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v3, Lorg/apache/poi/java/awt/SystemColor;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v3, Lorg/apache/poi/java/awt/SystemColor;->activeCaption:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v5, Lorg/apache/poi/java/awt/SystemColor;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v5, Lorg/apache/poi/java/awt/SystemColor;->activeCaptionText:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v7, Lorg/apache/poi/java/awt/SystemColor;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v7, Lorg/apache/poi/java/awt/SystemColor;->activeCaptionBorder:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v9, Lorg/apache/poi/java/awt/SystemColor;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v9, Lorg/apache/poi/java/awt/SystemColor;->inactiveCaption:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v11, Lorg/apache/poi/java/awt/SystemColor;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v11, Lorg/apache/poi/java/awt/SystemColor;->inactiveCaptionText:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v13, Lorg/apache/poi/java/awt/SystemColor;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v13, Lorg/apache/poi/java/awt/SystemColor;->inactiveCaptionBorder:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v15, Lorg/apache/poi/java/awt/SystemColor;

    const/4 v14, 0x7

    invoke-direct {v15, v14}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v15, Lorg/apache/poi/java/awt/SystemColor;->window:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v14, Lorg/apache/poi/java/awt/SystemColor;

    const/16 v12, 0x8

    invoke-direct {v14, v12}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v14, Lorg/apache/poi/java/awt/SystemColor;->windowBorder:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v12, Lorg/apache/poi/java/awt/SystemColor;

    const/16 v10, 0x9

    invoke-direct {v12, v10}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v12, Lorg/apache/poi/java/awt/SystemColor;->windowText:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v10, Lorg/apache/poi/java/awt/SystemColor;

    const/16 v8, 0xa

    invoke-direct {v10, v8}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v10, Lorg/apache/poi/java/awt/SystemColor;->menu:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v8, Lorg/apache/poi/java/awt/SystemColor;

    const/16 v6, 0xb

    invoke-direct {v8, v6}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v8, Lorg/apache/poi/java/awt/SystemColor;->menuText:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v6, Lorg/apache/poi/java/awt/SystemColor;

    const/16 v4, 0xc

    invoke-direct {v6, v4}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v6, Lorg/apache/poi/java/awt/SystemColor;->text:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v4, Lorg/apache/poi/java/awt/SystemColor;

    const/16 v2, 0xd

    invoke-direct {v4, v2}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v4, Lorg/apache/poi/java/awt/SystemColor;->textText:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v2, Lorg/apache/poi/java/awt/SystemColor;

    const/16 v0, 0xe

    invoke-direct {v2, v0}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v2, Lorg/apache/poi/java/awt/SystemColor;->textHighlight:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v0, Lorg/apache/poi/java/awt/SystemColor;

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v2}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v0, Lorg/apache/poi/java/awt/SystemColor;->textHighlightText:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v2, Lorg/apache/poi/java/awt/SystemColor;

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v2, Lorg/apache/poi/java/awt/SystemColor;->textInactiveText:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v0, Lorg/apache/poi/java/awt/SystemColor;

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v0, v2}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v0, Lorg/apache/poi/java/awt/SystemColor;->control:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v2, Lorg/apache/poi/java/awt/SystemColor;

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v2, v0}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v2, Lorg/apache/poi/java/awt/SystemColor;->controlText:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v0, Lorg/apache/poi/java/awt/SystemColor;

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v0, v2}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v0, Lorg/apache/poi/java/awt/SystemColor;->controlHighlight:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v2, Lorg/apache/poi/java/awt/SystemColor;

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v2, v0}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v2, Lorg/apache/poi/java/awt/SystemColor;->controlLtHighlight:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v0, Lorg/apache/poi/java/awt/SystemColor;

    move-object/from16 v23, v2

    const/16 v2, 0x15

    invoke-direct {v0, v2}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v0, Lorg/apache/poi/java/awt/SystemColor;->controlShadow:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v2, Lorg/apache/poi/java/awt/SystemColor;

    move-object/from16 v24, v0

    const/16 v0, 0x16

    invoke-direct {v2, v0}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v2, Lorg/apache/poi/java/awt/SystemColor;->controlDkShadow:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v0, Lorg/apache/poi/java/awt/SystemColor;

    move-object/from16 v25, v2

    const/16 v2, 0x17

    invoke-direct {v0, v2}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v0, Lorg/apache/poi/java/awt/SystemColor;->scrollbar:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v2, Lorg/apache/poi/java/awt/SystemColor;

    move-object/from16 v26, v0

    const/16 v0, 0x18

    invoke-direct {v2, v0}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v2, Lorg/apache/poi/java/awt/SystemColor;->info:Lorg/apache/poi/java/awt/SystemColor;

    new-instance v0, Lorg/apache/poi/java/awt/SystemColor;

    move-object/from16 v27, v2

    const/16 v2, 0x19

    invoke-direct {v0, v2}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    sput-object v0, Lorg/apache/poi/java/awt/SystemColor;->infoText:Lorg/apache/poi/java/awt/SystemColor;

    const/16 v2, 0x1a

    new-array v2, v2, [Lorg/apache/poi/java/awt/SystemColor;

    const/16 v16, 0x0

    aput-object v1, v2, v16

    const/4 v1, 0x1

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v5, v2, v1

    const/4 v1, 0x3

    aput-object v7, v2, v1

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v11, v2, v1

    const/4 v1, 0x6

    aput-object v13, v2, v1

    const/4 v1, 0x7

    aput-object v15, v2, v1

    const/16 v1, 0x8

    aput-object v14, v2, v1

    const/16 v1, 0x9

    aput-object v12, v2, v1

    const/16 v1, 0xa

    aput-object v10, v2, v1

    const/16 v1, 0xb

    aput-object v8, v2, v1

    const/16 v1, 0xc

    aput-object v6, v2, v1

    const/16 v1, 0xd

    aput-object v4, v2, v1

    const/16 v1, 0xe

    aput-object v17, v2, v1

    const/16 v1, 0xf

    aput-object v18, v2, v1

    const/16 v1, 0x10

    aput-object v19, v2, v1

    const/16 v1, 0x11

    aput-object v20, v2, v1

    const/16 v1, 0x12

    aput-object v21, v2, v1

    const/16 v1, 0x13

    aput-object v22, v2, v1

    const/16 v1, 0x14

    aput-object v23, v2, v1

    const/16 v1, 0x15

    aput-object v24, v2, v1

    const/16 v1, 0x16

    aput-object v25, v2, v1

    const/16 v1, 0x17

    aput-object v26, v2, v1

    const/16 v1, 0x18

    aput-object v27, v2, v1

    const/16 v1, 0x19

    aput-object v0, v2, v1

    sput-object v2, Lorg/apache/poi/java/awt/SystemColor;->systemColorObjects:[Lorg/apache/poi/java/awt/SystemColor;

    invoke-static {}, Lorg/apache/poi/java/awt/SystemColor;->updateSystemColors()V

    return-void

    :array_0
    .array-data 4
        -0xffa3a4
        -0xffff80
        -0x1
        -0x3f3f40
        -0x7f7f80
        -0x3f3f40
        -0x3f3f40
        -0x1
        -0x1000000
        -0x1000000
        -0x3f3f40
        -0x1000000
        -0x3f3f40
        -0x1000000
        -0xffff80
        -0x1
        -0x7f7f80
        -0x3f3f40
        -0x1000000
        -0x1
        -0x1f1f20
        -0x7f7f80
        -0x1000000
        -0x1f1f20
        -0x1f2000
        -0x1000000
    .end array-data
.end method

.method private constructor <init>(B)V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/SystemColor;->systemColors:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Color;-><init>(I)V

    iput p1, p0, Lorg/apache/poi/java/awt/SystemColor;->index:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/apache/poi/java/awt/SystemColor;->systemColorObjects:[Lorg/apache/poi/java/awt/SystemColor;

    iget v1, p0, Lorg/apache/poi/java/awt/Color;->value:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static updateSystemColors()V
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/java/awt/SystemColor;->systemColors:[I

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Toolkit;->loadSystemColors([I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/java/awt/SystemColor;->systemColors:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v2, Lorg/apache/poi/java/awt/SystemColor;->systemColorObjects:[Lorg/apache/poi/java/awt/SystemColor;

    aget-object v2, v2, v0

    aget v1, v1, v0

    iput v1, v2, Lorg/apache/poi/java/awt/Color;->value:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/apache/poi/java/awt/SystemColor;

    iget v1, p0, Lorg/apache/poi/java/awt/SystemColor;->index:I

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/SystemColor;-><init>(B)V

    iget v1, p0, Lorg/apache/poi/java/awt/SystemColor;->index:I

    iput v1, v0, Lorg/apache/poi/java/awt/Color;->value:I

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/poi/java/awt/SystemColor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/SystemColor;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

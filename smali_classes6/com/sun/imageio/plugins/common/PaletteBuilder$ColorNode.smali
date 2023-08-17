.class public Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/common/PaletteBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorNode"
.end annotation


# instance fields
.field public blue:J

.field public childCount:I

.field public children:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

.field public colorCount:I

.field public green:J

.field public isLeaf:Z

.field public level:I

.field public nextReducible:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

.field public paletteIndex:I

.field public red:J

.field public final synthetic this$0:Lcom/sun/imageio/plugins/common/PaletteBuilder;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/common/PaletteBuilder;)V
    .locals 4

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->this$0:Lcom/sun/imageio/plugins/common/PaletteBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->isLeaf:Z

    iput p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->level:I

    iput p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->childCount:I

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    iput-object v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->children:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->children:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->colorCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->blue:J

    iput-wide v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->green:J

    iput-wide v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->red:J

    iput p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->paletteIndex:I

    return-void
.end method


# virtual methods
.method public getLeafChildCount()I
    .locals 4

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->isLeaf:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->children:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v3, v2, v1

    if-eqz v3, :cond_2

    aget-object v3, v2, v1

    iget-boolean v3, v3, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->isLeaf:Z

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->getLeafChildCount()I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public getRGB()I
    .locals 5

    iget-wide v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->red:J

    long-to-int v0, v0

    iget v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->colorCount:I

    div-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->green:J

    long-to-int v2, v2

    div-int/2addr v2, v1

    iget-wide v3, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->blue:J

    long-to-int v3, v3

    div-int/2addr v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

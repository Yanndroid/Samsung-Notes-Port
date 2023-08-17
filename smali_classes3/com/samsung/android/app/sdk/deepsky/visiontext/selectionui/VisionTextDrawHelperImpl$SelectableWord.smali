.class Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectableWord"
.end annotation


# static fields
.field public static final MAX:I = 0xc350

.field public static final MIN:I = -0x1

.field public static paintSelected:Landroid/graphics/Paint;


# instance fields
.field public entityIndex:I

.field public isEnabled:Z

.field public isSelected:Z

.field public lineIndex:I

.field public path:Landroid/graphics/Path;

.field public poly:[Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public wordData:Ljava/lang/String;

.field public wordIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->paintSelected:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->paintSelected:Landroid/graphics/Paint;

    const/16 v1, 0x66

    const/16 v2, 0xcb

    const/16 v3, 0xff

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;[Landroid/graphics/Point;Landroid/graphics/Rect;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x1

    iput-boolean p6, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->isEnabled:Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->rect:Landroid/graphics/Rect;

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->lineIndex:I

    iput p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->wordIndex:I

    iput p3, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->entityIndex:I

    iput-object p4, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->wordData:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->poly:[Landroid/graphics/Point;

    iput-boolean p7, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->isSelected:Z

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->path:Landroid/graphics/Path;

    const/4 p2, 0x0

    aget-object p3, p5, p2

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    aget-object p4, p5, p2

    iget p4, p4, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->path:Landroid/graphics/Path;

    aget-object p3, p5, p6

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    aget-object p4, p5, p6

    iget p4, p4, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->path:Landroid/graphics/Path;

    const/4 p3, 0x2

    aget-object p4, p5, p3

    iget p4, p4, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    aget-object p3, p5, p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->path:Landroid/graphics/Path;

    const/4 p3, 0x3

    aget-object p4, p5, p3

    iget p4, p4, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    aget-object p3, p5, p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    array-length p1, p5

    const/4 p3, -0x1

    const p4, 0xc350

    move p6, p4

    move p7, p6

    move p4, p3

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p5, p2

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {p6, v1}, Ljava/lang/Math;->min(II)I

    move-result p6

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p7, v1}, Ljava/lang/Math;->min(II)I

    move-result p7

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, p6, p7, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static create(IIILjava/lang/String;[Landroid/graphics/Point;Landroid/graphics/Rect;Z)Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;
    .locals 9

    new-instance v8, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;-><init>(IIILjava/lang/String;[Landroid/graphics/Point;Landroid/graphics/Rect;Z)V

    return-object v8
.end method


# virtual methods
.method public drawRect(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->isSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->path:Landroid/graphics/Path;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->paintSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->wordData:Ljava/lang/String;

    return-object v0
.end method

.method public getWordIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->wordIndex:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->isSelected:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->isEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->isSelected:Z

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->isEnabled:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->isSelected:Z

    :cond_0
    return-void
.end method

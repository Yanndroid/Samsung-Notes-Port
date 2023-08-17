.class Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public drawable:Landroid/graphics/drawable/Drawable;

.field public isDarkMode:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;->isDarkMode:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;->type:I

    return-void
.end method


# virtual methods
.method public equals(ZI)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;->isDarkMode:Z

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;->type:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

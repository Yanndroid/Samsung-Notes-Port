.class public Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final BADGE_ICON_RADIUS:F = 0.125f

.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;


# instance fields
.field private mCirclePaint:Landroid/graphics/Paint;

.field private mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->setIcon(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;

    return-object p0
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;

    return-void
.end method

.method private setCircleColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setIcon(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->drawer_badge_icon:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_icon:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_toolbar_action_menu_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->badge_text:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;-><init>()V

    :goto_0
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->badge_background_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->setCircleColor(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/LayerDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

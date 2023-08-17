.class public Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetPreviewLayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/widget/setting/view/preview/IWidgetPreviewLayoutManager;


# instance fields
.field private mHeight:I

.field private mLayoutId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$dimen;->widget_setting_show_note_preview_width_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetPreviewLayoutManager;->mWidth:I

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$dimen;->widget_setting_show_note_preview_height_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetPreviewLayoutManager;->mHeight:I

    sget p1, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_pin_settings_preview:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$dimen;->widget_setting_shortcut_preview_width_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetPreviewLayoutManager;->mWidth:I

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$dimen;->widget_setting_shortcut_preview_height_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetPreviewLayoutManager;->mHeight:I

    sget p1, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_pin_settings_preview_shortcut:I

    :goto_0
    iput p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetPreviewLayoutManager;->mLayoutId:I

    return-void
.end method


# virtual methods
.method public initPreview(Landroid/view/View;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetPreviewLayoutManager;->mWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetPreviewLayoutManager;->mHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetPreviewLayoutManager;->mLayoutId:I

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

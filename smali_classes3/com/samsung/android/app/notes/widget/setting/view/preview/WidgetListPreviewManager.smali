.class public Lcom/samsung/android/app/notes/widget/setting/view/preview/WidgetListPreviewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/widget/setting/view/preview/IWidgetPreviewLayoutManager;


# instance fields
.field private final mHeight:I

.field private final mLayoutId:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$dimen;->widget_setting_show_note_preview_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/WidgetListPreviewManager;->mWidth:I

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$dimen;->widget_setting_show_note_preview_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/WidgetListPreviewManager;->mHeight:I

    sget p1, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_list_setting_preview:I

    iput p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/WidgetListPreviewManager;->mLayoutId:I

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

    iget v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/WidgetListPreviewManager;->mWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/WidgetListPreviewManager;->mHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/preview/WidgetListPreviewManager;->mLayoutId:I

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

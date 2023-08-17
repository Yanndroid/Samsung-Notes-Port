.class Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttachMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter$AppItemViewHolder;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->a(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->a(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->a(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->a(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$layout;->image_picker_item_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter$AppItemViewHolder;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter$AppItemViewHolder;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;)V

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter$AppItemViewHolder;->icon:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter$AppItemViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter$AppItemViewHolder;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->a(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;

    if-eqz v0, :cond_1

    iget-object p1, p3, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter$AppItemViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getTitleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p3, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter$AppItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AttachMenuAdapter#getView# appInfo is null. getCount:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;->getCount()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", position:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ImagePicker"

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p2
.end method

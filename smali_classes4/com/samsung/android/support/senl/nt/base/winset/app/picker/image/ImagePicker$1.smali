.class Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->sortAppList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "ImagePicker"

    const-string p2, "sortAppList# compare o2 is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->d(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->d(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->d(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->d(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->d(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    return p1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->d(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->d(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->d(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->d(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.gallery3d"

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move v0, v3

    goto :goto_2

    :sswitch_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_1
    const-string v0, "com.sec.android.app.myfiles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :sswitch_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getAppType()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getAppType()I

    move-result p2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v3

    :pswitch_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    return v3

    :cond_9
    :goto_3
    return v2

    :pswitch_2
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x1310b466 -> :sswitch_2
        0x1bf5d9f5 -> :sswitch_1
        0x72a8643b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;

    check-cast p2, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;->compare(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;)I

    move-result p1

    return p1
.end method

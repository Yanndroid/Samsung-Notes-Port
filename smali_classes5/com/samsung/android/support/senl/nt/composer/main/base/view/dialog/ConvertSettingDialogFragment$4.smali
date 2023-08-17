.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->loadLanguageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$4;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

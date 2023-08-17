.class public Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/RecycleBinActivity;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->enrollExcludedListToHideNavigationBar(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createFragment()Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/RecycleBinFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/RecycleBinFragment;-><init>()V

    return-object v0
.end method

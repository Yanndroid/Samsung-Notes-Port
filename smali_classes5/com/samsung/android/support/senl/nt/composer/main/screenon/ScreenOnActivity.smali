.class public Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;
.source "SourceFile"


# instance fields
.field private mDecorView:Landroid/view/View;

.field private mDecorViewHeight:I

.field private mDecorViewWidth:I

.field private mIsFreeForm:Z

.field private final mLocation:[I

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mIsFreeForm:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mLocation:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mDecorViewWidth:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mDecorViewHeight:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mIsFreeForm:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mLocation:[I

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mDecorViewHeight:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mDecorViewWidth:I

    return-void
.end method

.method public static getScreenOnNoteActivityOptions(Landroid/content/Context;)Landroid/app/ActivityOptions;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/util/ScreenOnUtils;->getScreenOnInfo(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createFragment()Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;-><init>()V

    return-object v0
.end method

.method public initialize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->addFragment()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mIsFreeForm:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mDecorViewWidth:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mDecorViewHeight:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mLocation:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/util/ScreenOnUtils;->saveScreenInfo(Landroid/app/Activity;IIII)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mDecorView:Landroid/view/View;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mDecorView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/util/ScreenOnUtils;->saveScreenInfo(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

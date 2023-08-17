.class public final Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\r\u001a\u00020\tH\u0016J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0006J\u0010\u0010\u0013\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\u0008\u0010\u0018\u001a\u00020\u000fH\u0002J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000cR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;",
        "Landroidx/appcompat/app/AlertDialog$Builder;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "theme",
        "",
        "(Landroid/content/Context;I)V",
        "mDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "mMarginBottom",
        "mWindowToken",
        "Landroid/os/IBinder;",
        "create",
        "dismiss",
        "",
        "requestHideNavigationBar",
        "setBottomMargin",
        "margin",
        "setButtonTheme",
        "buttonTheme",
        "Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;",
        "setMarginBottom",
        "marginBottom",
        "setWindowToken",
        "windowToken",
        "Companion",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mMarginBottom:I

.field private mWindowToken:Landroid/os/IBinder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->Companion:Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat$Companion;

    const-string v0, "ToolAlertDialogBuilderForAppCompat"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->create$lambda-0(Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final create$lambda-0(Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;Landroid/content/DialogInterface;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private final requestHideNavigationBar()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->TAG:Ljava/lang/String;

    const-string v1, "requestHideNavigationBar"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->hideNavigationBar(Landroid/content/Context;Landroid/view/View;)Z

    return-void
.end method

.method private final setMarginBottom(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMarginBottom marginBottom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_3
    return-void
.end method

.method private final setWindowToken()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setWindowToken"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    return-void
.end method


# virtual methods
.method public create()Landroidx/appcompat/app/AlertDialog;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mWindowToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lu3/a;

    invoke-direct {v1, p0}, Lu3/a;-><init>(Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->requestHideNavigationBar()V

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mMarginBottom:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->setMarginBottom(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->setWindowToken()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final dismiss()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "try dismiss()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const-string v1, "dismiss() done!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setBottomMargin(I)Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mMarginBottom:I

    return-object p0
.end method

.method public final setButtonTheme(Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;->getButton1TextColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->setButtonShapeEnabledWithTextColor(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;->getButton2TextColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->setButtonShapeEnabledWithTextColor(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;->getButton3TextColor()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->setButtonShapeEnabledWithTextColor(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final setWindowToken(Landroid/os/IBinder;)Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;
    .locals 0
    .param p1    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/ToolAlertDialogBuilderForAppCompat;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.class public Lcom/samsung/android/support/senl/nt/base/winset/snackbar/SnackbarHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SnackbarHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/snackbar/SnackbarHelper;->lambda$show$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$show$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Activity;II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x2L
            to = 0x0L
        .end annotation
    .end param

    if-nez p0, :cond_0

    const-string p0, "SnackbarHelper"

    const-string p1, "show# error - activity is null"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/snackbar/SnackbarHelper;->show(Landroid/app/Activity;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Z

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x2L
            to = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/snackbar/SnackbarHelper;->show(Landroid/app/Activity;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Z

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Z
    .locals 6
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x2L
            to = 0x0L
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/base/winset/snackbar/SnackbarHelper;->show(Landroid/app/Activity;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Z

    move-result p0

    return p0
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Z
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x2L
            to = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/CharSequence;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
            "Lcom/google/android/material/snackbar/Snackbar;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SnackbarHelper"

    if-nez p0, :cond_0

    const-string p0, "show# error - activity is null"

    :goto_0
    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "show# error - window is null"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v2, 0x1020002

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "show# error - can\'t find content view!"

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    if-eqz p3, :cond_3

    new-instance p1, Lc4/a;

    invoke-direct {p1, p4}, Lc4/a;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p3, p1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p0, p5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    const/4 p0, 0x1

    return p0
.end method

.class Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient$2;->this$1:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient$2;->this$1:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$500(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient$2;->this$1:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    :cond_0
    return-void
.end method

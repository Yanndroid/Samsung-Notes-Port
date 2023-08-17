.class Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2$1;->this$1:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

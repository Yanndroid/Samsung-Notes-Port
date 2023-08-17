.class Lcom/samsung/android/penup/internal/sso/AuthUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/sso/AuthUtil;->sendErrorResult(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

.field public final synthetic val$errorCode:I

.field public final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/samsung/android/penup/PenupClient$ConnectionCallback;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/penup/internal/sso/AuthUtil$1;->val$errorCode:I

    iput-object p2, p0, Lcom/samsung/android/penup/internal/sso/AuthUtil$1;->val$errorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/penup/internal/sso/AuthUtil$1;->val$callback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/samsung/android/penup/ResponseResult;

    iget v1, p0, Lcom/samsung/android/penup/internal/sso/AuthUtil$1;->val$errorCode:I

    iget-object v2, p0, Lcom/samsung/android/penup/internal/sso/AuthUtil$1;->val$errorMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/AuthUtil$1;->val$callback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    invoke-interface {v1, v0}, Lcom/samsung/android/penup/PenupClient$ConnectionCallback;->onConnectionFailed(Lcom/samsung/android/penup/ResponseResult;)V

    return-void
.end method

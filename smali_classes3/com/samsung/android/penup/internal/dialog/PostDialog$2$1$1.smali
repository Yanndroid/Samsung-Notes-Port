.class Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/CollectionResource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1$1;->this$2:Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1$1;->this$2:Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$2;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$600(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.class Lcom/samsung/android/penup/internal/dialog/PostDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog;->init(Lcom/samsung/android/penup/PenupClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$4;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$4;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->dismiss()V

    return-void
.end method

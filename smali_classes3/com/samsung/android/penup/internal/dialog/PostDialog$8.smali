.class Lcom/samsung/android/penup/internal/dialog/PostDialog$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog;->setCancelButton()V
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

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$8;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$8;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$1100(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$8$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$8$1;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog$8;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

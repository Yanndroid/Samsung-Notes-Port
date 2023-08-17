.class Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->setSubmitButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->access$300(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6$1;-><init>(Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

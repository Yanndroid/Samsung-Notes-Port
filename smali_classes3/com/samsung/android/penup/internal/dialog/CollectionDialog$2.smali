.class Lcom/samsung/android/penup/internal/dialog/CollectionDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/penup/internal/dialog/CollectionDialog;
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

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->access$000(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Landroid/widget/Button;

    move-result-object p1

    const-string p2, "#3a3a3a"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->access$000(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->access$000(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Landroid/widget/Button;

    move-result-object p1

    const-string p2, "#aaaaaa"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->access$000(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

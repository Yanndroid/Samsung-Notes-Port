.class Lcom/samsung/android/sdk/pen/widget/SpenHashTag$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/widget/SpenHashTag;-><init>(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/widget/SpenHashTag;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$1;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$1;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->setConfirmResult(Z)V

    return-void
.end method

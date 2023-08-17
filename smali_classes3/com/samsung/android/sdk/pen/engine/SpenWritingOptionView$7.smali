.class Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

.field public final synthetic val$linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$7;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$7;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$7;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$7;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

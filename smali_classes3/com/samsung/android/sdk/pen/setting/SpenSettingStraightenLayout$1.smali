.class Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)Z

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->access$002(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;Z)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$StraightenInfoChangedListener;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$StraightenInfoChangedListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingStraightenLayout$StraightenInfoChangedListener;->onLetterCorrectionChanged(Z)V

    return-void
.end method

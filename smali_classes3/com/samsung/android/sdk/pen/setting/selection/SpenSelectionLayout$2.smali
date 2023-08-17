.class Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->includePartiallySelected:Z

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object p1

    iput-boolean p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->includePartiallySelected:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;->onSelectionOptionChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

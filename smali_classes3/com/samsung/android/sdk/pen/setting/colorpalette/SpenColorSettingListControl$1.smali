.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->initListView(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const/16 p4, 0x8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, p4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move p4, v0

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {p1, v1, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;II)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

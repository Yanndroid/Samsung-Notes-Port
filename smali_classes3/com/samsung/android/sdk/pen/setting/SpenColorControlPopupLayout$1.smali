.class Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChangeBefore(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->checkVisibilityChangedBefore(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)V

    return-void
.end method

.method public onVisibilityChanged(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->checkVisibilityChangedAfter(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;ZZ)V

    return-void
.end method

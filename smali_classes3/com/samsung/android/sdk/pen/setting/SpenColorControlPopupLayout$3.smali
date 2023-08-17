.class Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnPaletteActionListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPalettePageChanged(II)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;)Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;)Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;->onPageChanged(I)V

    :cond_0
    return-void
.end method

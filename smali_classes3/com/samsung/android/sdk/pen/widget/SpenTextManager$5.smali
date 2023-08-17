.class Lcom/samsung/android/sdk/pen/widget/SpenTextManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/text/SpenInputManager$SuggestionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/widget/SpenTextManager;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$5;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHighlightSuggestion(IIII)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$5;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->access$200(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)J

    move-result-wide v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->access$400(JIIII)V

    return-void
.end method

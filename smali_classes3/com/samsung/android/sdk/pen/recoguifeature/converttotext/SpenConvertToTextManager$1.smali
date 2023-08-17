.class Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->createFloatingTextResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$100(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$100(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$600(J)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$500(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->requestTextFocus(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$500(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;->clearSpan()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onClose()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$400(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->getInstance()Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    move-result-object v0

    const/16 v1, 0x19b

    const/16 v2, 0x119a

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->insertLog(II)V

    :cond_2
    return-void
.end method

.method public onConvert(Landroid/text/SpannableStringBuilder;Landroid/graphics/RectF;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$100(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$100(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$200(J)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onConvertToText(Landroid/text/SpannableStringBuilder;Landroid/graphics/RectF;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$400(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->getInstance()Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    move-result-object p1

    const/16 p2, 0x19b

    const/16 v0, 0x119c

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->getInstance()Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    move-result-object p1

    const/16 p2, 0x19c

    const/16 v0, 0x10d6

    :goto_1
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->insertLog(II)V

    return-void
.end method

.method public onCopy(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onCopySelected(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$400(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->getInstance()Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    move-result-object p1

    const/16 v0, 0x19b

    const/16 v1, 0x119b

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->getInstance()Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    move-result-object p1

    const/16 v0, 0x19c

    const/16 v1, 0x10df

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->insertLog(II)V

    return-void
.end method

.method public onEditTextOverflow(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$500(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onEditLineOverflow(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$500(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/FloatingTextResult;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onEditTextOverflow(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSetting()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;->onSetting()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager$1;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->access$400(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->getInstance()Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    move-result-object v0

    const/16 v1, 0x19b

    const/16 v2, 0x1199

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->insertLog(II)V

    :cond_1
    return-void
.end method

.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTipCardNeutralButtonClickListener type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TipCardView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    sparse-switch v0, :sswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tipCard type: "

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMeet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMeet;->isHost()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;->onTipCardMeetNewNote(Z)V

    const-string p1, "680"

    const-string v0, "7679"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unused tipCard type: "

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    const-string p1, "101"

    const-string v1, "5541"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :sswitch_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;->onTipCardClose(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x8 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_3
        0x400 -> :sswitch_3
        0x40000 -> :sswitch_3
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_3
        0x800000 -> :sswitch_3
        0x8000000 -> :sswitch_3
        0x10000000 -> :sswitch_0
    .end sparse-switch
.end method

.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->createItemOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->itemArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;

    iget p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;->name:I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAddMenuListDialog$onClick, which: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->isCoeditNote()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "683"

    goto :goto_0

    :cond_0
    const-string v0, "401"

    :goto_0
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_add_text_box:I

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->addTextBox()V

    const-string p1, "4135"

    :goto_1
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_add_drawing:I

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->addDrawing()V

    const-string p1, "3529"

    goto :goto_1

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_channel_name:I

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->addVoice()V

    const-string p1, "4005"

    goto :goto_1

    :cond_3
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_add_audio:I

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->addAudioFile()V

    const-string p1, "4137"

    goto :goto_1

    :cond_4
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_text_only:I

    if-ne v1, p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->addTextFile()V

    goto :goto_2

    :cond_5
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_add_math:I

    if-ne v1, p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->addMath()V

    const-string p1, "3531"

    goto :goto_1

    :cond_6
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_add_table:I

    if-ne v1, p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->addTable()V

    const-string p1, "3530"

    goto :goto_1

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->hideAddMenuPopup()V

    return-void
.end method

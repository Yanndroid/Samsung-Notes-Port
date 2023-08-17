.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showListDialog$onClick, which: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;->itemArray:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuContract$IOptionMenuMorePopup;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;->itemArray:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuContract$IOptionMenuMorePopup;->onOptionsItemSelected(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$CardMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;->hidePopup()V

    :cond_0
    return-void
.end method

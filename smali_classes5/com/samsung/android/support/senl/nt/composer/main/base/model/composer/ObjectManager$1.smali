.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$ConvertContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getConvertContract(Landroid/text/SpannableStringBuilder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$ConvertContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field public final synthetic val$spannableSB:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Landroid/text/SpannableStringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager$1;->val$spannableSB:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager$1;->val$spannableSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public getNewVoiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getNewVoiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

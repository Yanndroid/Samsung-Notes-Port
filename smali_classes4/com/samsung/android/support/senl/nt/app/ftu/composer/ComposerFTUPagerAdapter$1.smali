.class Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->onPageSelected(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->a(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;Ljava/lang/Runnable;)V

    return-void
.end method

.class Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "key_last_used_ftu_version"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->isComposerFTUNeeds()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->h(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)V

    :cond_1
    :goto_0
    return-void
.end method

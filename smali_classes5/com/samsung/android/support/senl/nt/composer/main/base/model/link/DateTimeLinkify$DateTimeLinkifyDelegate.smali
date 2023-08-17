.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DateTimeLinkifyDelegate"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)V

    return-void
.end method


# virtual methods
.method public getDateTimeIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public abstract setIntentExtraForDate(Ljava/lang/String;)Landroid/content/Intent;
.end method

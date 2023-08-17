.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$EntityExtractorImpl;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntityExtractorImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$EntityExtractorImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/d;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$EntityExtractorImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)V

    return-void
.end method

.method private updateIntentEventAllDay(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v0, 0x3b

    if-ne p1, v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "allDay"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public setIntentExtraForDate(Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$EntityExtractorImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$EntityExtractorImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/e;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;->setIntentExtraForDate(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$EntityExtractorImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;->addLinks(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$EntityExtractorImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/e;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;->getDateTimeIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "beginTime"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;->mEndDate:Ljava/util/Date;

    const-wide/32 v4, 0x36ee80

    const-string v6, "endTime"

    if-nez v3, :cond_2

    add-long/2addr v0, v4

    invoke-virtual {v2, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "allDay"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-nez v3, :cond_3

    add-long/2addr v0, v4

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$EntityExtractorImpl;->updateIntentEventAllDay(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;Landroid/content/Intent;)V

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;->mEndDate:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_1
    invoke-virtual {v2, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_2
    return-object v2
.end method

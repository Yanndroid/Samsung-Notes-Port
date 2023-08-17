.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReminderData"
.end annotation


# instance fields
.field public reminderUUID:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;->reminderUUID:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;->time:J

    return-void
.end method

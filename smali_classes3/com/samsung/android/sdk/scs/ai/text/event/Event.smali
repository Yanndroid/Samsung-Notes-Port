.class public Lcom/samsung/android/sdk/scs/ai/text/event/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allDay:Z

.field public endDateTime:Ljava/time/LocalDateTime;

.field public location:Ljava/lang/String;

.field public startDateTime:Ljava/time/LocalDateTime;

.field public title:Ljava/lang/String;

.field public untilFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/samsung/android/sdk/scs/ai/text/event/Event;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/text/event/Event;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getEndDateTime()Ljava/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->endDateTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDateTime()Ljava/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->startDateTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isAllDay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->allDay:Z

    return v0
.end method

.method public isUntilFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->untilFlag:Z

    return v0
.end method

.method public setAllDay(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->allDay:Z

    return-void
.end method

.method public setEndDateTime(Ljava/time/LocalDateTime;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->endDateTime:Ljava/time/LocalDateTime;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->location:Ljava/lang/String;

    return-void
.end method

.method public setStartDateTime(Ljava/time/LocalDateTime;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->startDateTime:Ljava/time/LocalDateTime;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->title:Ljava/lang/String;

    return-void
.end method

.method public setUntilFlag(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/event/Event;->untilFlag:Z

    return-void
.end method

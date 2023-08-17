.class public Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl;
    }
.end annotation


# static fields
.field public static final LINK_EVENT_STRING:Ljava/lang/String; = "COEDIT_LINK_"

.field private static sDefaultEventBus:Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getEventBus()Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager;->sDefaultEventBus:Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/a;)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager;->sDefaultEventBus:Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager;->sDefaultEventBus:Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

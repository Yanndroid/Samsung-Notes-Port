.class public Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/TaskFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMMAND_START_CREATE_NOTE_BY_AIR_COMMAND:Ljava/lang/String; = "Start Create note by AirCommand"

.field private static final COMMAND_START_CREATE_NOTE_BY_DOUBLE_TAP:Ljava/lang/String; = "Start Create note by double tap"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTask(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/Task;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "Start Create note by AirCommand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Start Create note by double tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/InvalidTask;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/InvalidTask;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/StartDoubleTap;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/StartDoubleTap;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/StartAirCommand;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/StartAirCommand;-><init>()V

    return-object p1
.end method

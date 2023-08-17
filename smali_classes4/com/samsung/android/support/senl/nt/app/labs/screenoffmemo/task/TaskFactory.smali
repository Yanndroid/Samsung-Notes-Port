.class public Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/TaskFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMMAND_START_SCREEN_OFF_MEMO_BY_PEN_DETACH:Ljava/lang/String; = "Start ScreenOffMemo by pen detach"

.field private static final COMMAND_START_SCREEN_OFF_MEMO_BY_PEN_DOUBLE_TAP:Ljava/lang/String; = "Start ScreenOffMemo by pen double tap"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTask(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/Task;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "Start ScreenOffMemo by pen detach"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Start ScreenOffMemo by pen double tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/InvalidTask;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/InvalidTask;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDoubleTap;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDoubleTap;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach;-><init>()V

    return-object p1
.end method

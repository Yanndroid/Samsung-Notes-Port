.class Lcom/samsung/android/smartscan/TaskManager/TaskManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/smartscan/TaskManager/TaskManager;->requestNewTask(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/smartscan/TaskManager/TaskManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager$1;->this$0:Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager$1;->this$0:Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    invoke-static {v0}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->access$000(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)V

    return-void
.end method

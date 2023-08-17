.class Lcom/samsung/android/app/notes/handoff/HandoffActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/handoff/HandoffActivity;->handleComposer(Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

.field public final synthetic val$metaData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$4;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    iput-object p2, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$4;->val$metaData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$4;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    iget-object p2, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$4;->val$metaData:Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->i(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$4;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->f(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Z)V

    return-void
.end method

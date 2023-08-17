.class public final synthetic Lcom/samsung/android/support/senl/nt/app/trigger/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/b;->a:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/b;->a:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/b;->b:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->c(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;I)V

    return-void
.end method

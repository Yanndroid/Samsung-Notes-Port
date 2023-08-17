.class public final synthetic Lcom/samsung/android/support/senl/nt/app/labs/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/a;->a:Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/labs/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/a;->a:Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;->a(Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;Landroid/content/Context;)V

    return-void
.end method

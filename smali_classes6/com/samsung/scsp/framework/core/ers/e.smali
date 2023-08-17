.class public final synthetic Lcom/samsung/scsp/framework/core/ers/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/ers/ErsImpl;

.field public final synthetic b:Lcom/samsung/scsp/framework/core/ers/ErsPreferences;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/ers/ErsImpl;Lcom/samsung/scsp/framework/core/ers/ErsPreferences;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/ers/e;->a:Lcom/samsung/scsp/framework/core/ers/ErsImpl;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/ers/e;->b:Lcom/samsung/scsp/framework/core/ers/ErsPreferences;

    iput-object p3, p0, Lcom/samsung/scsp/framework/core/ers/e;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/scsp/framework/core/ers/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/ers/e;->a:Lcom/samsung/scsp/framework/core/ers/ErsImpl;

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/ers/e;->b:Lcom/samsung/scsp/framework/core/ers/ErsPreferences;

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/ers/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/scsp/framework/core/ers/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->c(Lcom/samsung/scsp/framework/core/ers/ErsImpl;Lcom/samsung/scsp/framework/core/ers/ErsPreferences;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.class public Lk2/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/a$a;->onReceived(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk2/a$a;


# direct methods
.method public constructor <init>(Lk2/a$a;)V
    .locals 0

    iput-object p1, p0, Lk2/a$a$a;->a:Lk2/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lk2/a$a$a;->a:Lk2/a$a;

    iget-object v0, v0, Lk2/a$a;->a:Lk2/a;

    invoke-virtual {v0}, Lk2/a;->update()V

    return-void
.end method

.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawerFragmentBixby2"
.end annotation


# static fields
.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;


# instance fields
.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public closeDrawer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    const-string v0, "Bixby2"

    const-string v1, "closeDrawer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->close()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;

    if-eqz v0, :cond_1

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;

    :cond_1
    return-void
.end method

.method public setDrawerLayout(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    return-void
.end method

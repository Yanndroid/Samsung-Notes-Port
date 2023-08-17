.class public Lorg/apache/poi/java/awt/Panel;
.super Lorg/apache/poi/java/awt/Container;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Panel$AccessibleAWTPanel;
    }
.end annotation


# static fields
.field private static final base:Ljava/lang/String; = "panel"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = -0x25dbd5ceef19ec22L


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/FlowLayout;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/FlowLayout;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Panel;-><init>(Lorg/apache/poi/java/awt/LayoutManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/LayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->setLayout(Lorg/apache/poi/java/awt/LayoutManager;)V

    return-void
.end method


# virtual methods
.method public addNotify()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createPanel(Lorg/apache/poi/java/awt/Panel;)Lorg/apache/poi/java/awt/peer/PanelPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Container;->addNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/Panel;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/Panel;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/Panel;->nameCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Panel$AccessibleAWTPanel;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Panel$AccessibleAWTPanel;-><init>(Lorg/apache/poi/java/awt/Panel;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

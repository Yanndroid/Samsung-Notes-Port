.class public Lorg/apache/poi/java/awt/List$AccessibleAWTList;
.super Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/AccessibleSelection;
.implements Lorg/apache/poi/java/awt/event/ItemListener;
.implements Lorg/apache/poi/java/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6df9e582ffd8e81dL


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/List;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/List;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;-><init>(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/java/awt/List;->addActionListener(Lorg/apache/poi/java/awt/event/ActionListener;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/java/awt/List;->addItemListener(Lorg/apache/poi/java/awt/event/ItemListener;)V

    return-void
.end method


# virtual methods
.method public actionPerformed(Lorg/apache/poi/java/awt/event/ActionEvent;)V
    .locals 0

    return-void
.end method

.method public addAccessibleSelection(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/List;->select(I)V

    return-void
.end method

.method public clearAccessibleSelection()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/List;->getSelectedIndexes()[I

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    aget v4, v1, v2

    invoke-virtual {v3, v4}, Lorg/apache/poi/java/awt/List;->deselect(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccessibleAt(Lorg/apache/poi/java/awt/Point;)Ljavax/accessibility/Accessible;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccessibleChild(I)Ljavax/accessibility/Accessible;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/List;->getItemCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :cond_0
    new-instance v1, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;

    iget-object v2, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-direct {v1, p0, v2, p1}, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;-><init>(Lorg/apache/poi/java/awt/List$AccessibleAWTList;Lorg/apache/poi/java/awt/List;I)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAccessibleChildrenCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/List;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->LIST:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method

.method public getAccessibleSelection(I)Ljavax/accessibility/Accessible;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->getAccessibleSelectionCount()I

    move-result v1

    if-ltz p1, :cond_1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/List;->getSelectedIndexes()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->getAccessibleChild(I)Ljavax/accessibility/Accessible;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAccessibleSelection()Ljavax/accessibility/AccessibleSelection;
    .locals 0

    return-object p0
.end method

.method public getAccessibleSelectionCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/List;->getSelectedIndexes()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/List;->isMultipleMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljavax/accessibility/AccessibleState;->MULTISELECTABLE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_0
    return-object v0
.end method

.method public isAccessibleChildSelected(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/List;->isIndexSelected(I)Z

    move-result p1

    return p1
.end method

.method public itemStateChanged(Lorg/apache/poi/java/awt/event/ItemEvent;)V
    .locals 0

    return-void
.end method

.method public removeAccessibleSelection(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/List;->deselect(I)V

    return-void
.end method

.method public selectAllAccessibleSelection()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/List;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v2, v1}, Lorg/apache/poi/java/awt/List;->select(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

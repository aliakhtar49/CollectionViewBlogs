//
//  SceneDelegate.swift
//  ImageGallery
//
//  Created by Macbook on 24/05/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        switch  kind {
//        case UICollectionView.elementKindSectionHeader:
//            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: MyHeaderAndFooterView.identifier, for: indexPath) as! MyHeaderAndFooterView
//            headerView.backgroundColor = .black
//            headerView.label.text = "My super header View"
//            return headerView
//        case UICollectionView.elementKindSectionFooter:
//            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: MyHeaderAndFooterView.identifier, for: indexPath) as! MyHeaderAndFooterView
//            footerView.backgroundColor = .lightGray
//            footerView.label.text = "My super Footer View"
//            return footerView
//        default:
//            fatalError()
//        }
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//         return CGSize(width: 100, height: 42)
////        return CGSize(width: collectionView.frame.width, height: 42)
//
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
//        return CGSize(width: collectionView.frame.width, height: 42)
//    }
//private func toGetTheControlImagesSize(collectionView: UICollectionView, indexPath: IndexPath) -> CGSize {
//    let width_of_collection_View = collectionView.bounds.width
//    let width_minus_section_insets = width_of_collection_View - (sectionInset * 2)
//    let interspacing: CGFloat = ((indexPath.row % Int(imagesPerRow)) == 0 ) ? 0.0 : minimumInteritemSpacing
//    let width_of_cell = width_minus_section_insets / imagesPerRow - interspacing
//    return CGSize(width: width_of_cell, height: width_of_cell)
//}
